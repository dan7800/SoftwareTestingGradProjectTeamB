.class public final Lcom/android/mail/ui/cg;
.super Lcom/android/mail/ui/M;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final aKG:I

.field private static final aKH:Ljava/util/regex/Pattern;

.field private static aKI:Z

.field private static aKJ:Ljava/lang/String;

.field private static aKK:Ljava/lang/String;

.field private static aKL:Ljava/lang/String;

.field private static aKM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/android/mail/ui/cg;->aKG:I

    .line 45
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cg;->TAG:Ljava/lang/String;

    .line 70
    const-string v0, "(<\\s*img\\s+(?:[^>]*\\s+)?)src(\\s*=[\\s\'\"]*http)"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cg;->aKH:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/android/mail/ui/M;-><init>(Landroid/content/Context;)V

    .line 93
    sget-boolean v0, Lcom/android/mail/ui/cg;->aKI:Z

    if-nez v0, :cond_0

    .line 94
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mail/ui/cg;->aKI:Z

    .line 95
    const v0, 0x7f07000a

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cg;->cK(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cg;->aKJ:Ljava/lang/String;

    .line 96
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cg;->cK(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cg;->aKK:Ljava/lang/String;

    .line 97
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cg;->cK(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cg;->aKL:Ljava/lang/String;

    .line 98
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/mail/ui/cg;->cK(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/ui/cg;->aKM:Ljava/lang/String;

    .line 100
    :cond_0
    return-void
.end method

.method public static a(Lcom/android/mail/ui/ch;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "m"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/android/mail/ui/ch;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cn(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 123
    return-object p0
.end method

.method public static co(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    sget v0, Lcom/android/mail/ui/cg;->aKG:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final R(II)V
    .locals 4

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/mail/ui/cg;->Um:Z

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    sget-object v0, Lcom/android/mail/ui/cg;->aKJ:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mail/ui/cg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;IIZZZZ)Ljava/lang/String;
    .locals 6

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/mail/ui/cg;->Um:Z

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call startConversation first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    if-eqz p6, :cond_1

    const-string v0, "initial-load"

    .line 200
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/e/q;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 202
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_3

    const-string v1, "\u25c0 "

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mail/ui/cg;->mContext:Landroid/content/Context;

    const v3, 0x7f090121

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    sget-object v2, Lcom/android/mail/ui/cg;->aKM:Ljava/lang/String;

    const/16 v3, 0xe

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/android/mail/ui/cg;->mContext:Landroid/content/Context;

    const v5, 0x7f090122

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x3

    aput-object v1, v3, v0

    const/4 v0, 0x4

    aput-object p2, v3, v0

    const/4 v0, 0x5

    aput-object p3, v3, v0

    const/4 v0, 0x6

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x8

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0x9

    invoke-static {p7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xa

    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xb

    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xc

    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v0

    const/16 v0, 0xd

    iget-object v1, p0, Lcom/android/mail/ui/cg;->mContext:Landroid/content/Context;

    const v4, 0x7f0901e9

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/mail/ui/cg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mail/ui/cg;->Um:Z

    .line 213
    sget-object v0, Lcom/android/mail/ui/cg;->TAG:Ljava/lang/String;

    const-string v1, "rendered conversation of %d bytes, buffer capacity=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mail/ui/cg;->gJ:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/mail/ui/cg;->gJ:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->capacity()I

    move-result v4

    shl-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/mail/utils/E;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/mail/ui/cg;->xf()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    .line 200
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 202
    :cond_3
    const-string v1, "\u25b6 "

    goto/16 :goto_2
.end method

.method public final a(Lcom/android/mail/ui/ch;ZZII)V
    .locals 8

    .prologue
    .line 134
    if-eqz p2, :cond_1

    const-string v0, "block"

    move-object v3, v0

    .line 135
    :goto_0
    if-eqz p2, :cond_2

    const-string v0, "expanded"

    move-object v2, v0

    .line 136
    :goto_1
    if-eqz p3, :cond_3

    const-string v0, "mail-show-images"

    .line 138
    :goto_2
    invoke-interface {p1}, Lcom/android/mail/ui/ch;->vF()Ljava/lang/String;

    move-result-object v1

    .line 154
    if-nez p3, :cond_0

    invoke-interface {p1}, Lcom/android/mail/ui/ch;->vE()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 155
    sget-object v4, Lcom/android/mail/ui/cg;->aKH:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v4, "$1src=\'data:\' blocked-src$2"

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    :cond_0
    sget-object v4, Lcom/android/mail/ui/cg;->aKK:Ljava/lang/String;

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Lcom/android/mail/ui/cg;->a(Lcom/android/mail/ui/ch;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v2, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    const/4 v2, 0x3

    aput-object v0, v5, v2

    const/4 v0, 0x4

    aput-object v3, v5, v0

    const/4 v0, 0x5

    aput-object v1, v5, v0

    const/4 v0, 0x6

    aput-object v3, v5, v0

    const/4 v0, 0x7

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/android/mail/ui/cg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return-void

    .line 134
    :cond_1
    const-string v0, "none"

    move-object v3, v0

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, ""

    move-object v2, v0

    goto :goto_1

    .line 136
    :cond_3
    const-string v0, ""

    goto :goto_2
.end method

.method public final f(III)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 179
    iget-boolean v0, p0, Lcom/android/mail/ui/cg;->Um:Z

    if-eqz v0, :cond_0

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Should not call start conversation until end conversation has been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lcom/android/mail/ui/cg;->reset()V

    .line 185
    invoke-static {}, Lcom/android/mail/utils/ag;->Bg()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "img[blocked-src] { border: 1px solid #CCCCCC; }"

    .line 187
    :goto_0
    sget-object v1, Lcom/android/mail/ui/cg;->aKL:Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    aput-object v0, v2, v5

    const/4 v0, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/android/mail/ui/cg;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    iput-boolean v5, p0, Lcom/android/mail/ui/cg;->Um:Z

    .line 189
    return-void

    .line 185
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
