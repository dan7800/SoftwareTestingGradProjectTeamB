.class public final Lcom/google/android/mail/common/base/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final coA:Lcom/google/android/mail/common/base/a;

.field private static final coB:Lcom/google/android/mail/common/base/a;

.field private static final coC:Lcom/google/android/mail/common/base/a;

.field private static final coD:Lcom/google/android/mail/common/base/a;

.field private static final coE:Lcom/google/android/mail/common/base/a;

.field private static final coF:[C

.field private static final coq:Lcom/google/android/mail/common/base/a;

.field private static final cor:Lcom/google/android/mail/common/base/a;

.field private static final cos:Lcom/google/android/mail/common/base/a;

.field private static final cot:Lcom/google/android/mail/common/base/a;

.field private static final cou:Lcom/google/android/mail/common/base/A;

.field private static final cov:Lcom/google/android/mail/common/base/A;

.field private static final cow:Lcom/google/android/mail/common/base/A;

.field private static final cox:Lcom/google/android/mail/common/base/A;

.field private static final coy:Lcom/google/android/mail/common/base/A;

.field private static final coz:Lcom/google/android/mail/common/base/A;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x9

    const/16 v5, 0x27

    const/16 v4, 0x22

    .line 40
    new-instance v0, Lcom/google/android/mail/common/base/e;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/e;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coq:Lcom/google/android/mail/common/base/a;

    .line 106
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VU()Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "&quot;"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "&apos;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/d;->cor:Lcom/google/android/mail/common/base/a;

    .line 133
    invoke-static {}, Lcom/google/android/mail/common/base/d;->VU()Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/d;->cos:Lcom/google/android/mail/common/base/a;

    .line 428
    new-instance v0, Lcom/google/android/mail/common/base/b;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/b;-><init>()V

    const-string v1, "&quot;"

    invoke-virtual {v0, v4, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "&#39;"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/d;->cot:Lcom/google/android/mail/common/base/a;

    .line 637
    new-instance v0, Lcom/google/android/mail/common/base/D;

    const-string v1, "-_.*"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/D;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->cou:Lcom/google/android/mail/common/base/A;

    .line 640
    new-instance v0, Lcom/google/android/mail/common/base/D;

    const-string v1, "-_.*"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/D;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->cov:Lcom/google/android/mail/common/base/A;

    .line 643
    new-instance v0, Lcom/google/android/mail/common/base/D;

    const-string v1, "-_.!~*\'()@:$&,;="

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/D;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->cow:Lcom/google/android/mail/common/base/A;

    .line 646
    new-instance v0, Lcom/google/android/mail/common/base/D;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/D;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->cox:Lcom/google/android/mail/common/base/A;

    .line 649
    new-instance v0, Lcom/google/android/mail/common/base/D;

    const-string v1, "-_.!~*\'()@:$,;/?:"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/D;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coy:Lcom/google/android/mail/common/base/A;

    .line 692
    new-instance v0, Lcom/google/android/mail/common/base/D;

    const-string v1, "!()*-._~,/:"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/android/mail/common/base/D;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coz:Lcom/google/android/mail/common/base/A;

    .line 714
    new-instance v0, Lcom/google/android/mail/common/base/h;

    new-instance v1, Lcom/google/android/mail/common/base/b;

    invoke-direct {v1}, Lcom/google/android/mail/common/base/b;-><init>()V

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v4, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/mail/common/base/b;->VR()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/h;-><init>([[C)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coA:Lcom/google/android/mail/common/base/a;

    .line 744
    new-instance v0, Lcom/google/android/mail/common/base/h;

    new-instance v1, Lcom/google/android/mail/common/base/b;

    invoke-direct {v1}, Lcom/google/android/mail/common/base/b;-><init>()V

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\\'"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\\""

    invoke-virtual {v1, v4, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/mail/common/base/b;->VR()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/h;-><init>([[C)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coB:Lcom/google/android/mail/common/base/a;

    .line 770
    new-instance v0, Lcom/google/android/mail/common/base/f;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/f;-><init>()V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coC:Lcom/google/android/mail/common/base/a;

    .line 805
    new-instance v0, Lcom/google/android/mail/common/base/b;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/b;-><init>()V

    const-string v1, "\\n"

    invoke-virtual {v0, v7, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "\\r"

    invoke-virtual {v0, v8, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "\\t"

    invoke-virtual {v0, v6, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "\\\""

    invoke-virtual {v0, v4, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const-string v1, "\\\'"

    invoke-virtual {v0, v5, v1}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/mail/common/base/b;->VS()Lcom/google/android/mail/common/base/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/d;->coD:Lcom/google/android/mail/common/base/a;

    .line 829
    new-instance v0, Lcom/google/android/mail/common/base/i;

    new-instance v1, Lcom/google/android/mail/common/base/b;

    invoke-direct {v1}, Lcom/google/android/mail/common/base/b;-><init>()V

    const-string v2, "\\x27"

    invoke-virtual {v1, v5, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\x22"

    invoke-virtual {v1, v4, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x3c

    const-string v3, "\\x3c"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x3d

    const-string v3, "\\x3d"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x3e

    const-string v3, "\\x3e"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x26

    const-string v3, "\\x26"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "\\b"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\t"

    invoke-virtual {v1, v6, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\n"

    invoke-virtual {v1, v7, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0xc

    const-string v3, "\\f"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const-string v2, "\\r"

    invoke-virtual {v1, v8, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    const/16 v2, 0x5c

    const-string v3, "\\\\"

    invoke-virtual {v1, v2, v3}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/mail/common/base/b;->VR()[[C

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/mail/common/base/i;-><init>([[C)V

    sput-object v0, Lcom/google/android/mail/common/base/d;->coE:Lcom/google/android/mail/common/base/a;

    .line 1101
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/mail/common/base/d;->coF:[C

    return-void
.end method

.method public static VT()Lcom/google/android/mail/common/base/a;
    .locals 1

    .prologue
    .line 420
    sget-object v0, Lcom/google/android/mail/common/base/d;->cot:Lcom/google/android/mail/common/base/a;

    return-object v0
.end method

.method private static VU()Lcom/google/android/mail/common/base/b;
    .locals 3

    .prologue
    .line 846
    new-instance v0, Lcom/google/android/mail/common/base/b;

    invoke-direct {v0}, Lcom/google/android/mail/common/base/b;-><init>()V

    const/16 v1, 0x26

    const-string v2, "&amp;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a(CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    const/16 v1, 0x1d

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mail/common/base/b;->a([CLjava/lang/String;)Lcom/google/android/mail/common/base/b;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x2s
        0x3s
        0x4s
        0x5s
        0x6s
        0x7s
        0x8s
        0xbs
        0xcs
        0xes
        0xfs
        0x10s
        0x11s
        0x12s
        0x13s
        0x14s
        0x15s
        0x16s
        0x17s
        0x18s
        0x19s
        0x1as
        0x1bs
        0x1cs
        0x1ds
        0x1es
        0x1fs
    .end array-data
.end method

.method static synthetic VV()[C
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/google/android/mail/common/base/d;->coF:[C

    return-object v0
.end method
