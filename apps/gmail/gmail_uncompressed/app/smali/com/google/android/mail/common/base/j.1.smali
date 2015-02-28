.class public abstract Lcom/google/android/mail/common/base/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final coJ:Lcom/google/android/mail/common/base/j;

.field public static final coK:Lcom/google/android/mail/common/base/j;

.field public static final coL:Lcom/google/android/mail/common/base/j;

.field public static final coM:Lcom/google/android/mail/common/base/j;

.field public static final coN:Lcom/google/android/mail/common/base/j;

.field public static final coO:Lcom/google/android/mail/common/base/j;

.field public static final coP:Lcom/google/android/mail/common/base/j;

.field public static final coQ:Lcom/google/android/mail/common/base/j;

.field public static final coR:Lcom/google/android/mail/common/base/j;

.field public static final coS:Lcom/google/android/mail/common/base/j;

.field public static final coT:Lcom/google/android/mail/common/base/j;

.field public static final coU:Lcom/google/android/mail/common/base/j;

.field public static final coV:Lcom/google/android/mail/common/base/j;

.field public static final coW:Lcom/google/android/mail/common/base/j;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final coX:Lcom/google/android/mail/common/base/j;

.field public static final coY:Lcom/google/android/mail/common/base/j;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/16 v10, 0x600

    const/16 v9, 0x20

    const/16 v8, 0x7f

    const/16 v7, 0x2000

    const/4 v1, 0x0

    .line 68
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000\u00a0\u180e\u202f"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x200a

    invoke-static {v7, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coJ:Lcom/google/android/mail/common/base/j;

    .line 80
    const-string v0, "\t\n\u000b\u000c\r \u0085\u1680\u2028\u2029\u205f\u3000"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200a

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coK:Lcom/google/android/mail/common/base/j;

    .line 89
    invoke-static {v1, v8}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coL:Lcom/google/android/mail/common/base/j;

    .line 98
    const/16 v0, 0x30

    const/16 v2, 0x39

    invoke-static {v0, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    .line 99
    const-string v2, "\u0660\u06f0\u07c0\u0966\u09e6\u0a66\u0ae6\u0b66\u0be6\u0c66\u0ce6\u0d66\u0e50\u0ed0\u0f20\u1040\u1090\u17e0\u1810\u1946\u19d0\u1b50\u1bb0\u1c40\u1c50\ua620\ua8d0\ua900\uaa50\uff10"

    .line 103
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v4, v3

    move-object v2, v0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-char v5, v3, v0

    .line 104
    add-int/lit8 v6, v5, 0x9

    int-to-char v6, v6

    invoke-static {v5, v6}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    sput-object v2, Lcom/google/android/mail/common/base/j;->coM:Lcom/google/android/mail/common/base/j;

    .line 115
    const/16 v0, 0x9

    const/16 v2, 0xd

    invoke-static {v0, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-static {v2, v9}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x1680

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x180e

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x2006

    invoke-static {v7, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x2008

    const/16 v3, 0x200b

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x2029

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x205f

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coN:Lcom/google/android/mail/common/base/j;

    .line 131
    new-instance v0, Lcom/google/android/mail/common/base/k;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/k;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coO:Lcom/google/android/mail/common/base/j;

    .line 143
    new-instance v0, Lcom/google/android/mail/common/base/q;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/q;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coP:Lcom/google/android/mail/common/base/j;

    .line 153
    new-instance v0, Lcom/google/android/mail/common/base/r;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/r;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coQ:Lcom/google/android/mail/common/base/j;

    .line 163
    new-instance v0, Lcom/google/android/mail/common/base/s;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/s;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coR:Lcom/google/android/mail/common/base/j;

    .line 173
    new-instance v0, Lcom/google/android/mail/common/base/t;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/t;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coS:Lcom/google/android/mail/common/base/j;

    .line 183
    const/16 v0, 0x1f

    invoke-static {v1, v0}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-static {v8, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coT:Lcom/google/android/mail/common/base/j;

    .line 192
    invoke-static {v1, v9}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0xa0

    invoke-static {v8, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0xad

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x603

    invoke-static {v10, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const-string v2, "\u06dd\u070f\u1680\u17b4\u17b5\u180e"

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x200f

    invoke-static {v7, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x2028

    const/16 v3, 0x202f

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x205f

    const/16 v3, 0x2064

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x206a

    const/16 v3, 0x206f

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v2, 0x3000

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const v2, 0xd800

    const v3, 0xf8ff

    invoke-static {v2, v3}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const-string v2, "\ufeff\ufff9\ufffa\ufffb"

    invoke-static {v2}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coU:Lcom/google/android/mail/common/base/j;

    .line 213
    const/16 v0, 0x4f9

    invoke-static {v1, v0}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x5be

    invoke-static {v1}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x5d0

    const/16 v2, 0x5ea

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x5f3

    invoke-static {v1}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x5f4

    invoke-static {v1}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x6ff

    invoke-static {v10, v1}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x750

    const/16 v2, 0x77f

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0xe00

    const/16 v2, 0xe7f

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x1e00

    const/16 v2, 0x20af

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const/16 v1, 0x2100

    const/16 v2, 0x213a

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const v1, 0xfb50

    const v2, 0xfdff

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const v1, 0xfe70

    const v2, 0xfeff

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    const v1, 0xff61

    const v2, 0xffdc

    invoke-static {v1, v2}, Lcom/google/android/mail/common/base/j;->b(CC)Lcom/google/android/mail/common/base/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coV:Lcom/google/android/mail/common/base/j;

    .line 237
    const-string v0, " \r\n\t\u3000\u00a0\u2007\u202f"

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/j;->VX()Lcom/google/android/mail/common/base/j;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/j;->coW:Lcom/google/android/mail/common/base/j;

    .line 242
    new-instance v0, Lcom/google/android/mail/common/base/u;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/u;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coX:Lcom/google/android/mail/common/base/j;

    .line 309
    new-instance v0, Lcom/google/android/mail/common/base/v;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/v;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/j;->coY:Lcom/google/android/mail/common/base/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 702
    return-void
.end method

.method private static b(CC)Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 490
    if-lt p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 491
    :cond_1
    new-instance v0, Lcom/google/android/mail/common/base/n;

    invoke-direct {v0, p0, p1}, Lcom/google/android/mail/common/base/n;-><init>(CC)V

    return-object v0
.end method

.method public static h(C)Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 380
    new-instance v0, Lcom/google/android/mail/common/base/w;

    invoke-direct {v0, p0}, Lcom/google/android/mail/common/base/w;-><init>(C)V

    return-object v0
.end method

.method public static x(Ljava/lang/CharSequence;)Lcom/google/android/mail/common/base/j;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 436
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 458
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 459
    invoke-static {v1}, Ljava/util/Arrays;->sort([C)V

    .line 461
    new-instance v0, Lcom/google/android/mail/common/base/m;

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/m;-><init>([C)V

    :goto_0
    return-object v0

    .line 438
    :pswitch_0
    sget-object v0, Lcom/google/android/mail/common/base/j;->coY:Lcom/google/android/mail/common/base/j;

    goto :goto_0

    .line 440
    :pswitch_1
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/google/android/mail/common/base/j;->h(C)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 443
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 444
    new-instance v0, Lcom/google/android/mail/common/base/l;

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/l;-><init>(CC)V

    goto :goto_0

    .line 436
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public A(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 979
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 983
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 984
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 985
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 988
    :cond_0
    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-le v0, v1, :cond_1

    .line 989
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 990
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 994
    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1061
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/j;->y(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1062
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1063
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1084
    :goto_0
    return-object v0

    .line 1068
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1072
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1073
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 1074
    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1075
    if-nez v1, :cond_1

    .line 1076
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1072
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1080
    :cond_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v3

    .line 1081
    goto :goto_2

    .line 1084
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final C(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 1093
    invoke-virtual {p0}, Lcom/google/android/mail/common/base/j;->VW()Lcom/google/android/mail/common/base/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/base/j;->y(Ljava/lang/CharSequence;)I

    move-result v0

    .line 1094
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1095
    const-string v0, ""

    .line 1111
    :goto_0
    return-object v0

    .line 1097
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v2

    .line 1099
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1100
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 1101
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1102
    const/4 v1, 0x1

    .line 1099
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1104
    :cond_1
    if-eqz v1, :cond_2

    .line 1105
    const/16 v1, 0x20

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v2

    .line 1108
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1111
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public VW()Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 542
    .line 543
    new-instance v0, Lcom/google/android/mail/common/base/o;

    invoke-direct {v0, p0, p0}, Lcom/google/android/mail/common/base/o;-><init>(Lcom/google/android/mail/common/base/j;Lcom/google/android/mail/common/base/j;)V

    return-object v0
.end method

.method public VX()Lcom/google/android/mail/common/base/j;
    .locals 1

    .prologue
    .line 643
    invoke-static {p0}, Lcom/google/android/mail/common/base/E;->b(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;

    move-result-object v0

    return-object v0
.end method

.method final VY()Lcom/google/android/mail/common/base/j;
    .locals 2

    .prologue
    .line 659
    new-instance v0, Lcom/google/android/mail/common/base/y;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/y;-><init>()V

    .line 660
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/j;->a(Lcom/google/android/mail/common/base/y;)V

    .line 662
    new-instance v1, Lcom/google/android/mail/common/base/p;

    invoke-direct {v1, p0, v0}, Lcom/google/android/mail/common/base/p;-><init>(Lcom/google/android/mail/common/base/j;Lcom/google/android/mail/common/base/y;)V

    return-object v1
.end method

.method public a(Lcom/google/android/mail/common/base/j;)Lcom/google/android/mail/common/base/j;
    .locals 4

    .prologue
    .line 599
    new-instance v1, Lcom/google/android/mail/common/base/z;

    const/4 v0, 0x2

    new-array v2, v0, [Lcom/google/android/mail/common/base/j;

    const/4 v0, 0x0

    aput-object p0, v2, v0

    const/4 v3, 0x1

    invoke-static {p1}, Lcom/google/android/mail/common/base/G;->ak(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/mail/common/base/j;

    aput-object v0, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/mail/common/base/z;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public a(Ljava/lang/CharSequence;C)Ljava/lang/String;
    .locals 3

    .prologue
    .line 901
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 902
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/j;->y(Ljava/lang/CharSequence;)I

    move-result v1

    .line 903
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 913
    :goto_0
    return-object v0

    .line 906
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 907
    aput-char p2, v2, v1

    .line 908
    add-int/lit8 v0, v1, 0x1

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 909
    aget-char v1, v2, v0

    invoke-virtual {p0, v1}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    aput-char p2, v2, v0

    .line 908
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 913
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v10, -0x1

    .line 934
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 935
    if-nez v1, :cond_0

    .line 936
    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/j;->z(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 960
    :goto_0
    return-object v0

    .line 938
    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 939
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/mail/common/base/j;->a(Ljava/lang/CharSequence;C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 942
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 943
    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/j;->y(Ljava/lang/CharSequence;)I

    move-result v1

    .line 944
    if-ne v1, v10, :cond_2

    move-object v0, v2

    .line 945
    goto :goto_0

    .line 948
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    int-to-double v6, v3

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-int v5, v6

    add-int/lit8 v5, v5, 0x10

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 953
    :cond_3
    invoke-virtual {v4, v2, v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 954
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 955
    add-int/lit8 v0, v1, 0x1

    .line 956
    invoke-virtual {p0, v2, v0}, Lcom/google/android/mail/common/base/j;->b(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 957
    if-ne v1, v10, :cond_3

    .line 959
    invoke-virtual {v4, v2, v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lcom/google/android/mail/common/base/y;)V
    .locals 3

    .prologue
    .line 684
    const/4 v0, 0x0

    .line 686
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    invoke-virtual {p1, v0}, Lcom/google/android/mail/common/base/y;->j(C)V

    .line 689
    :cond_0
    add-int/lit8 v1, v0, 0x1

    int-to-char v1, v1

    const v2, 0xffff

    if-ne v0, v2, :cond_1

    .line 690
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public apply(Ljava/lang/Character;)Z
    .locals 1

    .prologue
    .line 1122
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p0, p1}, Lcom/google/android/mail/common/base/j;->apply(Ljava/lang/Character;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/lang/CharSequence;I)I
    .locals 3

    .prologue
    .line 791
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 792
    invoke-static {p2, v1}, Lcom/google/android/mail/common/base/G;->ad(II)I

    move v0, p2

    .line 793
    :goto_0
    if-ge v0, v1, :cond_1

    .line 794
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 798
    :goto_1
    return v0

    .line 793
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 798
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public abstract i(C)Z
.end method

.method public y(Ljava/lang/CharSequence;)I
    .locals 3

    .prologue
    .line 765
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 766
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 767
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 771
    :goto_1
    return v0

    .line 766
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public z(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 842
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-virtual {p0, v0}, Lcom/google/android/mail/common/base/j;->y(Ljava/lang/CharSequence;)I

    move-result v1

    .line 844
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 867
    :goto_0
    return-object v0

    .line 848
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 849
    const/4 v0, 0x1

    .line 854
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 856
    array-length v2, v3

    if-eq v1, v2, :cond_2

    .line 857
    aget-char v2, v3, v1

    invoke-virtual {p0, v2}, Lcom/google/android/mail/common/base/j;->i(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 860
    sub-int v2, v1, v0

    aget-char v4, v3, v1

    aput-char v4, v3, v2

    goto :goto_1

    .line 865
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 867
    :cond_2
    new-instance v2, Ljava/lang/String;

    const/4 v4, 0x0

    sub-int v0, v1, v0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    move-object v0, v2

    goto :goto_0
.end method
