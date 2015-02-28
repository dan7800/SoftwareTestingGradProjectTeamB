.class public final Lcom/android/mail/utils/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aQU:Ljava/util/regex/Pattern;

.field protected aQV:Z

.field private aQW:I

.field private final aQX:Lcom/android/mail/providers/d;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mail/utils/aj;->aQU:Ljava/util/regex/Pattern;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/utils/aj;->aQV:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mail/utils/aj;->aQW:I

    .line 81
    new-instance v0, Lcom/android/mail/utils/ak;

    invoke-direct {v0, p0}, Lcom/android/mail/utils/ak;-><init>(Lcom/android/mail/utils/aj;)V

    iput-object v0, p0, Lcom/android/mail/utils/aj;->aQX:Lcom/android/mail/providers/d;

    .line 93
    return-void
.end method

.method static synthetic a(Lcom/android/mail/utils/aj;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/mail/utils/aj;->cL(Ljava/lang/String;)V

    return-void
.end method

.method public static final c(Landroid/content/res/Resources;)Lcom/android/mail/utils/aj;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/android/mail/utils/aj;

    invoke-direct {v0}, Lcom/android/mail/utils/aj;-><init>()V

    .line 119
    const v1, 0x7f0e000a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/mail/utils/aj;->aQV:Z

    .line 120
    iget-boolean v1, v0, Lcom/android/mail/utils/aj;->aQV:Z

    if-eqz v1, :cond_0

    .line 121
    const v1, 0x7f090178

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mail/utils/aj;->cL(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-object v0
.end method

.method private final cL(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 102
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 104
    iget v1, p0, Lcom/android/mail/utils/aj;->aQW:I

    if-eq v0, v1, :cond_0

    .line 105
    iput v0, p0, Lcom/android/mail/utils/aj;->aQW:I

    .line 106
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mail/utils/aj;->aQU:Ljava/util/regex/Pattern;

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mail/utils/aj;->aQV:Z

    .line 111
    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Lcom/android/mail/ui/O;)V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/mail/utils/aj;->aQX:Lcom/android/mail/providers/d;

    invoke-virtual {v0, p1}, Lcom/android/mail/providers/d;->a(Lcom/android/mail/ui/O;)Lcom/android/mail/providers/Account;

    .line 133
    return-void
.end method

.method public final cM(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/mail/utils/aj;->aQV:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mail/utils/aj;->aQU:Ljava/util/regex/Pattern;

    if-nez v0, :cond_1

    .line 145
    :cond_0
    const/4 v0, 0x0

    .line 147
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/mail/utils/aj;->aQU:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method
