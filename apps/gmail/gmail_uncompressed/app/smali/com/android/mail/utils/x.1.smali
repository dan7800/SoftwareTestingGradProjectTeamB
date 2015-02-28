.class public final Lcom/android/mail/utils/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final mW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/android/mail/utils/D;->AU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mail/utils/x;->mW:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/t;)Landroid/text/Spanned;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 51
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v0

    const-string v1, "compose_html_to_span"

    invoke-virtual {v0, v1}, Lcom/android/mail/a/c;->bb(Ljava/lang/String;)V

    .line 53
    invoke-static {p0}, Lcom/android/mail/utils/ag;->cH(Ljava/lang/String;)Lcom/google/android/mail/common/html/parser/HtmlTree;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p1}, Lcom/google/android/mail/common/html/parser/HtmlTree;->a(Lcom/google/android/mail/common/html/parser/t;)V

    .line 55
    invoke-virtual {v0}, Lcom/google/android/mail/common/html/parser/HtmlTree;->Wn()Landroid/text/Spanned;

    move-result-object v0

    .line 56
    invoke-static {}, Lcom/android/mail/a/c;->os()Lcom/android/mail/a/c;

    move-result-object v1

    const-string v2, "compose_html_to_span"

    const-string v3, "compose"

    const-string v4, "html_to_span"

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/android/mail/a/c;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/android/mail/utils/x;->mW:Ljava/lang/String;

    const-string v2, "htmlToSpan completed, input: %d, result: %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1, v2, v3}, Lcom/android/mail/utils/E;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 60
    return-object v0
.end method
