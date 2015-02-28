.class public final Lcom/android/mail/utils/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final aPq:Lorg/owasp/html/i;

.field private static final aPr:Lorg/owasp/html/p;

.field private static final aPs:Lorg/owasp/html/p;

.field private static final aPt:Lorg/owasp/html/b;

.field private static final aPu:Lorg/owasp/html/b;

.field private static final aPv:Lorg/owasp/html/b;

.field private static final aPw:Lorg/owasp/html/U;

.field private static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 58
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/t;->mW:Ljava/lang/String;

    .line 64
    const-string v0, "float"

    const-string v1, "display"

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lorg/owasp/html/i;->i(Ljava/lang/Iterable;)Lorg/owasp/html/i;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/t;->aPq:Lorg/owasp/html/i;

    .line 72
    new-instance v0, Lcom/android/mail/utils/u;

    invoke-direct {v0}, Lcom/android/mail/utils/u;-><init>()V

    sput-object v0, Lcom/android/mail/utils/t;->aPr:Lorg/owasp/html/p;

    .line 82
    new-instance v0, Lcom/android/mail/utils/v;

    invoke-direct {v0}, Lcom/android/mail/utils/v;-><init>()V

    sput-object v0, Lcom/android/mail/utils/t;->aPs:Lorg/owasp/html/p;

    .line 121
    new-instance v0, Lorg/owasp/html/v;

    const-string v1, "http"

    const-string v2, "https"

    invoke-static {v1, v2}, Lcom/google/common/collect/ImmutableList;->q(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/owasp/html/v;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    .line 127
    new-instance v0, Lorg/owasp/html/v;

    const-string v1, "mailto"

    const-string v2, "http"

    const-string v3, "https"

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/owasp/html/v;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/android/mail/utils/t;->aPu:Lorg/owasp/html/b;

    .line 134
    new-instance v0, Lorg/owasp/html/v;

    const-string v1, "cid"

    const-string v2, "http"

    const-string v3, "https"

    invoke-static {v1, v2, v3}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/owasp/html/v;-><init>(Ljava/lang/Iterable;)V

    sput-object v0, Lcom/android/mail/utils/t;->aPv:Lorg/owasp/html/b;

    .line 190
    new-instance v0, Lorg/owasp/html/G;

    invoke-direct {v0}, Lorg/owasp/html/G;-><init>()V

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dir"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "ltr"

    aput-object v2, v1, v5

    const-string v2, "rtl"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/google/common/collect/ImmutableSet;->j([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/owasp/html/I;->a(ZLjava/util/Set;)Lorg/owasp/html/I;

    move-result-object v0

    invoke-virtual {v0}, Lorg/owasp/html/I;->acg()Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "cid"

    aput-object v2, v1, v5

    const-string v2, "http"

    aput-object v2, v1, v4

    const-string v2, "https"

    aput-object v2, v1, v6

    const-string v2, "mailto"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->K([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Lorg/owasp/html/i;

    sget-object v2, Lorg/owasp/html/i;->cGL:Lorg/owasp/html/i;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/mail/utils/t;->aPq:Lorg/owasp/html/i;

    aput-object v2, v1, v4

    invoke-static {v1}, Lorg/owasp/html/i;->a([Lorg/owasp/html/i;)Lorg/owasp/html/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->a(Lorg/owasp/html/i;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "applet"

    aput-object v2, v1, v5

    const-string v2, "frameset"

    aput-object v2, v1, v4

    const-string v2, "object"

    aput-object v2, v1, v6

    const-string v2, "script"

    aput-object v2, v1, v7

    const-string v2, "style"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "title"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->I([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "coords"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v4

    const-string v2, "shape"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "href"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPu:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "a"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "abbr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "abbr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "acronym"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "title"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "acronym"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "address"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "area"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "alt"

    aput-object v2, v1, v5

    const-string v2, "coords"

    aput-object v2, v1, v4

    const-string v2, "nohref"

    aput-object v2, v1, v6

    const-string v2, "name"

    aput-object v2, v1, v7

    const-string v2, "shape"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "area"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "href"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "area"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "article"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "aside"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "b"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "base"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "href"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "base"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "bdi"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dir"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "bdi"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "bdo"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dir"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "bdo"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "big"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "blockquote"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "cite"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "blockquote"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPr:Lorg/owasp/html/p;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "body"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/owasp/html/G;->a(Lorg/owasp/html/p;[Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "br"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "clear"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "br"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "button"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autofocus"

    aput-object v2, v1, v5

    const-string v2, "disabled"

    aput-object v2, v1, v4

    const-string v2, "form"

    aput-object v2, v1, v6

    const-string v2, "formaction"

    aput-object v2, v1, v7

    const-string v2, "formenctype"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "formmethod"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "formnovalidate"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "formtarget"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "value"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "button"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "canvas"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "width"

    aput-object v2, v1, v5

    const-string v2, "height"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "canvas"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "caption"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "caption"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "center"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "cite"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "code"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "col"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "bgcolor"

    aput-object v2, v1, v4

    const-string v2, "char"

    aput-object v2, v1, v6

    const-string v2, "charoff"

    aput-object v2, v1, v7

    const-string v2, "span"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "valign"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "col"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "colgroup"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "char"

    aput-object v2, v1, v4

    const-string v2, "charoff"

    aput-object v2, v1, v6

    const-string v2, "span"

    aput-object v2, v1, v7

    const-string v2, "valign"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "colgroup"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "datalist"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dd"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "del"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "cite"

    aput-object v2, v1, v5

    const-string v2, "datetime"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "del"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "details"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dfn"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dir"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "compact"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dir"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPs:Lorg/owasp/html/p;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "div"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lorg/owasp/html/G;->a(Lorg/owasp/html/p;[Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "background"

    aput-object v2, v1, v4

    const-string v2, "class"

    aput-object v2, v1, v6

    const-string v2, "id"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "div"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dl"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "dt"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "em"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "fieldset"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "disabled"

    aput-object v2, v1, v5

    const-string v2, "form"

    aput-object v2, v1, v4

    const-string v2, "name"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "fieldset"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "figcaption"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "figure"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "font"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "color"

    aput-object v2, v1, v5

    const-string v2, "face"

    aput-object v2, v1, v4

    const-string v2, "size"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "font"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "footer"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "form"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "accept"

    aput-object v2, v1, v5

    const-string v2, "action"

    aput-object v2, v1, v4

    const-string v2, "accept-charset"

    aput-object v2, v1, v6

    const-string v2, "autocomplete"

    aput-object v2, v1, v7

    const-string v2, "enctype"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "method"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "novalidate"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "target"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "form"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "header"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h1"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h1"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h2"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h2"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h3"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h3"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h4"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h4"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h5"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h5"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h6"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "h6"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "hr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "noshade"

    aput-object v2, v1, v4

    const-string v2, "size"

    aput-object v2, v1, v6

    const-string v2, "width"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "hr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "i"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "img"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "src"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPv:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "img"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "longdesc"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "img"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "alt"

    aput-object v2, v1, v4

    const-string v2, "border"

    aput-object v2, v1, v6

    const-string v2, "crossorigin"

    aput-object v2, v1, v7

    const-string v2, "height"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "hspace"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ismap"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "usemap"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "vspace"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "img"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "input"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "src"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "input"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "formaction"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "input"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0x1c

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "accept"

    aput-object v2, v1, v5

    const-string v2, "align"

    aput-object v2, v1, v4

    const-string v2, "alt"

    aput-object v2, v1, v6

    const-string v2, "autocomplete"

    aput-object v2, v1, v7

    const-string v2, "autofocus"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "checked"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "disabled"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "form"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "formenctype"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "formmethod"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "formnovalidate"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "formtarget"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "list"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "max"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "maxlength"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "min"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "multiple"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "name"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "pattern"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "placeholder"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "readonly"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "required"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "size"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "step"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "type"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "value"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "input"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ins"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "cite"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ins"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "datetime"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ins"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "kbd"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "keygen"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autofocus"

    aput-object v2, v1, v5

    const-string v2, "challenge"

    aput-object v2, v1, v4

    const-string v2, "disabled"

    aput-object v2, v1, v6

    const-string v2, "form"

    aput-object v2, v1, v7

    const-string v2, "keytype"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "keygen"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "label"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "form"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "label"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "legend"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "legend"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "li"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "type"

    aput-object v2, v1, v5

    const-string v2, "value"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "li"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "main"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "map"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "name"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "map"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "mark"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "menu"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "label"

    aput-object v2, v1, v5

    const-string v2, "type"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "menu"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "menuitem"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "icon"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "menuitem"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "checked"

    aput-object v2, v1, v5

    const-string v2, "command"

    aput-object v2, v1, v4

    const-string v2, "default"

    aput-object v2, v1, v6

    const-string v2, "disabled"

    aput-object v2, v1, v7

    const-string v2, "label"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "type"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "radiogroup"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "menuitem"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "meter"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "form"

    aput-object v2, v1, v5

    const-string v2, "high"

    aput-object v2, v1, v4

    const-string v2, "low"

    aput-object v2, v1, v6

    const-string v2, "max"

    aput-object v2, v1, v7

    const-string v2, "min"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "optimum"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "value"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "meter"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "nav"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ol"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "compact"

    aput-object v2, v1, v5

    const-string v2, "reversed"

    aput-object v2, v1, v4

    const-string v2, "start"

    aput-object v2, v1, v6

    const-string v2, "type"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ol"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "optgroup"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "disabled"

    aput-object v2, v1, v5

    const-string v2, "label"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "optgroup"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "option"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "disabled"

    aput-object v2, v1, v5

    const-string v2, "label"

    aput-object v2, v1, v4

    const-string v2, "selected"

    aput-object v2, v1, v6

    const-string v2, "value"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "option"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "output"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "form"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "output"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "p"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "pre"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "width"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "pre"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "progress"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "max"

    aput-object v2, v1, v5

    const-string v2, "value"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "progress"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "cite"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    sget-object v1, Lcom/android/mail/utils/t;->aPt:Lorg/owasp/html/b;

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->a(Lorg/owasp/html/b;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "q"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "rp"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "rt"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ruby"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "s"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "samp"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "section"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "select"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autofocus"

    aput-object v2, v1, v5

    const-string v2, "disabled"

    aput-object v2, v1, v4

    const-string v2, "form"

    aput-object v2, v1, v6

    const-string v2, "multiple"

    aput-object v2, v1, v7

    const-string v2, "name"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "required"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "size"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "select"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "small"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "span"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "strike"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "strong"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "sub"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "summary"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "sup"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "table"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "bgcolor"

    aput-object v2, v1, v4

    const-string v2, "border"

    aput-object v2, v1, v6

    const-string v2, "cellpadding"

    aput-object v2, v1, v7

    const-string v2, "cellspacing"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "frame"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "rules"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "sortable"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "summary"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "table"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tbody"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "char"

    aput-object v2, v1, v4

    const-string v2, "charoff"

    aput-object v2, v1, v6

    const-string v2, "valign"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tbody"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "td"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "abbr"

    aput-object v2, v1, v5

    const-string v2, "align"

    aput-object v2, v1, v4

    const-string v2, "axis"

    aput-object v2, v1, v6

    const-string v2, "bgcolor"

    aput-object v2, v1, v7

    const-string v2, "char"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "charoff"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "colspan"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "nowrap"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "rowspan"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "scope"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "valign"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "td"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "textarea"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "autofocus"

    aput-object v2, v1, v5

    const-string v2, "cols"

    aput-object v2, v1, v4

    const-string v2, "disabled"

    aput-object v2, v1, v6

    const-string v2, "form"

    aput-object v2, v1, v7

    const-string v2, "maxlength"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "placeholder"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "readonly"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "required"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "rows"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "wrap"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "textarea"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tfoot"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "char"

    aput-object v2, v1, v4

    const-string v2, "charoff"

    aput-object v2, v1, v6

    const-string v2, "valign"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tfoot"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "th"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "abbr"

    aput-object v2, v1, v5

    const-string v2, "align"

    aput-object v2, v1, v4

    const-string v2, "axis"

    aput-object v2, v1, v6

    const-string v2, "bgcolor"

    aput-object v2, v1, v7

    const-string v2, "char"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "charoff"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "colspan"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "height"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "nowrap"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "rowspan"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "scope"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "sorted"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "valign"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "width"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "th"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "thead"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "char"

    aput-object v2, v1, v4

    const-string v2, "charoff"

    aput-object v2, v1, v6

    const-string v2, "valign"

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "thead"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "time"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "datetime"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "time"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "align"

    aput-object v2, v1, v5

    const-string v2, "bgcolor"

    aput-object v2, v1, v4

    const-string v2, "char"

    aput-object v2, v1, v6

    const-string v2, "charoff"

    aput-object v2, v1, v7

    const-string v2, "valign"

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "tt"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "u"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ul"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "compact"

    aput-object v2, v1, v5

    const-string v2, "type"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->J([Ljava/lang/String;)Lorg/owasp/html/I;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "ul"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/I;->L([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "var"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "wbr"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lorg/owasp/html/G;->H([Ljava/lang/String;)Lorg/owasp/html/G;

    move-result-object v0

    invoke-virtual {v0}, Lorg/owasp/html/G;->ace()Lorg/owasp/html/U;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/t;->aPw:Lorg/owasp/html/U;

    return-void
.end method

.method public static cv(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 373
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sanitizing email should not occur on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    if-nez p0, :cond_1

    .line 378
    const/4 v0, 0x0

    .line 409
    :goto_0
    return-object v0

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 385
    sget-object v1, Lorg/owasp/html/w;->cIg:Lorg/owasp/html/w;

    new-instance v2, Lcom/android/mail/utils/w;

    invoke-direct {v2}, Lcom/android/mail/utils/w;-><init>()V

    invoke-static {v0, v1, v2}, Lorg/owasp/html/O;->a(Ljava/lang/Appendable;Lorg/owasp/html/w;Lorg/owasp/html/w;)Lorg/owasp/html/O;

    move-result-object v1

    .line 398
    sget-object v2, Lcom/android/mail/utils/t;->aPw:Lorg/owasp/html/U;

    invoke-virtual {v2, v1}, Lorg/owasp/html/U;->apply(Lorg/owasp/html/N;)Lorg/owasp/html/M;

    move-result-object v1

    .line 401
    invoke-static {}, Lcom/android/mail/f/b;->tg()V

    .line 403
    :try_start_0
    invoke-static {p0, v1}, Lorg/owasp/html/K;->a(Ljava/lang/String;Lorg/owasp/html/M;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    invoke-static {}, Lcom/android/mail/f/b;->th()V

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/mail/f/b;->th()V

    throw v0
.end method

.method static synthetic oA()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/mail/utils/t;->mW:Ljava/lang/String;

    return-object v0
.end method
