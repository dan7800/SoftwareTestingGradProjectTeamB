.class public final Lcom/android/mail/utils/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aOZ:Ljava/lang/Exception;

.field public final aPa:[Landroid/content/ContentProviderResult;


# direct methods
.method private constructor <init>(Ljava/lang/Exception;[Landroid/content/ContentProviderResult;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/mail/utils/f;->aOZ:Ljava/lang/Exception;

    .line 61
    iput-object p2, p0, Lcom/android/mail/utils/f;->aPa:[Landroid/content/ContentProviderResult;

    .line 62
    return-void
.end method

.method static synthetic a([Landroid/content/ContentProviderResult;)Lcom/android/mail/utils/f;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/mail/utils/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/mail/utils/f;-><init>(Ljava/lang/Exception;[Landroid/content/ContentProviderResult;)V

    return-object v0
.end method

.method static synthetic b(Ljava/lang/Exception;)Lcom/android/mail/utils/f;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/android/mail/utils/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mail/utils/f;-><init>(Ljava/lang/Exception;[Landroid/content/ContentProviderResult;)V

    return-object v0
.end method
